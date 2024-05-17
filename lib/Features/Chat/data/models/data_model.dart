class BikesDecisionModel {
  static const Map<String,
      Map<String, Map<String, Map<String, Map<String, String>>>>> data = {
    "number of members < 1000": {
      "profit from members < 2000": {
        "number of classic bikes < 3000": {
          "number of electric bikes < 1500": {
            "profit from casual bikes < 2000":
                "You need to buy more bikes electric & classic and increase the casual and membership members",
            "profit from casual bikes > 2000":
                "You need to buy more bikes electric & classic and increase the membership members"
          },
          "number of electric bikes > 1500": {
            "profit from casual bikes < 2000":
                "You need to buy more bikes classic and increase the casual and membership members",
            "profit from casual bikes > 2000":
                "You need to buy more bikes classic and increase the membership members"
          }
        },
        "number of classic bikes > 3000": {
          "number of electric bikes < 150": {
            "profit from casual bikes < 2000":
                "You need to buy more bikes electric and increase the casual and membership members",
            "profit from casual bikes > 2000":
                "You need to buy more bikes electric and increase the membership members"
          },
          "number of electric bikes > 150": {
            "profit from casual bikes < 2000":
                "You need to increase the casual and membership members",
            "profit from casual bikes > 2000":
                "You need to increase the membership members"
          }
        }
      },
      "profit from members > 2000": {
        "number of classic bikes < 3000": {
          "number of electric bikes < 1500": {
            "profit from casual bikes < 2000":
                "You need to buy more bikes electric & classic and increase the casual and membership members",
            "profit from casual bikes > 2000":
                "You need to buy more bikes electric & classic and increase the membership members"
          },
          "number of electric bikes > 1500": {
            "profit from casual bikes < 2000":
                "You need to buy more bikes classic and increase the casual and membership members",
            "profit from casual bikes > 2000":
                "You need to buy more bikes classic and increase the membership members"
          }
        },
        "number of classic bikes > 3000": {
          "number of elecrtic bikes < 150": {
            "profit from casual bikes < 2000":
                "You need to buy more bikes electric and increase the casual and membership members",
            "profit from casual bikes > 2000":
                "You need to buy more bikes electric and increase the membership members"
          },
          "number of electric bikes > 150": {
            "profit from casual bikes < 2000":
                "You need to increase the casual and membership members",
            "profit from casual bikes > 2000":
                "You need to increase the membership members"
          }
        }
      }
    },
    "number of members > 1000": {
      "profit from members < 2000": {
        "number of classic bikes < 3000": {
          "number of electric bikes < 1500": {
            "profit from casual bikes < 2000":
                "You need to buy more bikes electric & classic and increase the casual and membership members",
            "profit from casual bikes > 2000":
                "You need to buy more bikes electric & classic and increase the membership members"
          },
          "number of electric bikes > 1500": {
            "profit from casual bikes < 2000":
                "You need to buy more bikes classic and increase the casual and membership members",
            "profit from casual bikes > 2000":
                "You need to buy more bikes classic and increase the membership members"
          }
        },
        "number of classic bikes > 3000": {
          "number of electric bikes < 150": {
            "profit from casual bikes < 2000":
                "You need to buy more bikes electric and increase the casual and membership members",
            "profit from casual bikes > 2000":
                "You need to buy more bikes electric and increase the membership members"
          },
          "number of electric bikes > 150": {
            "profit from casual bikes < 2000":
                "You need to increase the casual and membership members",
            "profit from casual bikes > 2000":
                "You need to increase the membership members"
          }
        }
      },
      "profit from members > 2000": {
        "number of classic bikes < 3000": {
          "number of electric bikes < 1500": {
            "profit from casual bikes < 2000":
                "You need to buy more bikes electric & classic and increase the casual and membership members",
            "profit from casual bikes > 2000":
                "You need to buy more bikes electric & classic and increase the membership members"
          },
          "number of electric bikes > 1500": {
            "profit from casual bikes < 2000":
                "You need to buy more bikes classic and increase the casual and membership members",
            "profit from casual bikes > 2000":
                "You need to buy more bikes classic and increase the membership members"
          }
        },
        "number of classic bikes > 3000": {
          "number of electric bikes < 1500": {
            "profit from casual bikes < 2000":
                "You need to buy more bikes electric and increase the casual members",
            "profit from casual bikes > 2000":
                "You need to buy more bikes electric and increase the membership members"
          },
          "number of electric bikes > 1500": {
            "profit from casual bikes < 2000":
                "You need to increase the casual and membership members",
            "profit from casual bikes > 2000":
                "You need to increase the membership members"
          }
        }
      }
    }
  };
}
