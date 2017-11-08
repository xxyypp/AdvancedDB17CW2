#include "Implementation.hpp"
#include <iostream>

using namespace std;
//////////////////// Nested Loop Joins ////////////////////

std::vector<std::string> getQualifyingBusinessesIDsVector(Businesses const& b, float latMin,float latMax, float longMin,float longMax) {
	// This function needs to find all businesses that have within the
	// specified latitude/longitude range and store their ids in the result vector
	//std::cout << "function getQualifyingBusinessesIDsVector not implemented" << std::endl;
	//throw std::logic_error("unimplemented");

    //////////////b.latitude is a vector -> b.latitude[i]//////////////////////

    std::vector<std::string> res;

    for (int i = 0; i < b.ids.size(); i++){
        if ((b.longitudes[i] <= longMax)&&(b.longitudes[i] >= longMin)){
            if ((b.latitudes[i] <= latMax)&&(b.latitudes[i] >= latMin)){
                res.push_back(b.ids[i]);
            }
        }
    }

    return res;
}

std::vector<unsigned long>
performNestedLoopJoinAndAggregation(Reviews const& r, std::vector<std::string> const& qualifyingBusinessesIDs) {
	// The second parameter of this function is the vector of qualifying
	// business ids you have created in the first function

	// This function needs to find all reviews that have business_ids in
	// the qualifyingBusinessesIDs vector and build a histogram over their stars
	// The return value is that histogram

	//std::cout << "function performNestedLoopJoinAndAggregation not implemented" << std::endl;
	//throw std::logic_error("unimplemented");

    int ct0 = 0;
    int ct1 = 0;
    int ct2 = 0;
    int ct3 = 0;
    int ct4 = 0;
    int ct5 = 0;

    for(int i = 0; i< r.business_ids.size(); i++){
        for (int j = 0; j <qualifyingBusinessesIDs.size();j++ ){
            if(r.business_ids[i] == qualifyingBusinessesIDs[j]){
                if(r.stars[i] == 0){
                    ct0++;
                }else if(r.stars[i] == 1){
                    ct1++;
                }else if(r.stars[i] == 2){
                    ct2++;
                }else if(r.stars[i] == 3){
                    ct3++;
                }else if(r.stars[i] == 4){
                    ct4++;
                }else if(r.stars[i] == 5){
                    ct5++;
                }
            }
        }
    }
    std::vector<unsigned long> res;
    res.push_back(ct0);
    res.push_back(ct1);
    res.push_back(ct2);
    res.push_back(ct3);
    res.push_back(ct4);
    res.push_back(ct5);

    return res;
}

//////////////////// Hash Join ////////////////////

std::unordered_set<std::string> getQualifyingBusinessesIDs(Businesses const& b, float latMin,float latMax, float longMin,float longMax) {
	// This function needs to find all businesses that have within the
	// specified latitude/longitude range and store their ids in the result set
	//std::cout << "function getQualifyingBusinessesIDs not implemented" << std::endl;
	//throw std::logic_error("unimplemented");

    std::unordered_set<std::string> res;

    for (int i = 0; i < b.ids.size(); i++){
        if ((b.longitudes[i] <= longMax)&&(b.longitudes[i] >= longMin)){
            if ((b.latitudes[i] <= latMax)&&(b.latitudes[i] >= latMin)){
                res.insert(b.ids[i]);
            }
        }
    }
    return res;

}

std::vector<unsigned long>
aggregateStarsOfQualifyingBusinesses(Reviews const& r,std::unordered_set<std::string> const& qualifyingBusinesses) {
	// The second parameter of this function is the set of qualifying
	// business ids you have created in the first function

	// This function needs to find all reviews that have business_ids in
	// the qualifyingBusinessesIDs vector and build a histogram over their stars
	// The return value is that histogram
	//std::cout << "function aggregateStarsOfQualifyingBusinesses not implemented" << std::endl;
	//throw std::logic_error("unimplemented");

    int ct0 = 0;
    int ct1 = 0;
    int ct2 = 0;
    int ct3 = 0;
    int ct4 = 0;
    int ct5 = 0;
    std::string tmp;

    for(int i = 0; i< r.business_ids.size(); i++){
        if(qualifyingBusinesses.count(r.business_ids[i])){
            if(r.stars[i] == 0){
                ct0++;
            }else if(r.stars[i] == 1){
                ct1++;
            }else if(r.stars[i] == 2){
                ct2++;
            }else if(r.stars[i] == 3){
                ct3++;
            }else if(r.stars[i] == 4){
                ct4++;
            }else if(r.stars[i] == 5){
                ct5++;
            }
        }
    }
    std::vector<unsigned long> res;
    res.push_back(ct0);
    res.push_back(ct1);
    res.push_back(ct2);
    res.push_back(ct3);
    res.push_back(ct4);
    res.push_back(ct5);

    return res;


}
