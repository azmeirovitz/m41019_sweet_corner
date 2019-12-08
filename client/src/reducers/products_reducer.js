import types from '../actions/types';

const DEFAULT_STATE = {
    list: [],
    details: null
}

//The reducer function:
export default (state = DEFAULT_STATE, action) => {
    switch(action.type){
        case types.GET_ALL_PRODUCTS:
            return {...state, list: action.products};
        break;

        case types.GET_PRODUCT_DETAILS:
            return {...state, details:action.product};
        break;

        case types.CLEAR_PRODUCT_DETAILS:
            return {...state,
                details: null            
            };

        break;

        default:
            return state;
    }
}
