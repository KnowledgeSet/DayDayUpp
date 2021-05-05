import Foundation

protocol HTNState {
    associatedtype StateType;
}

func stateFilter<FromState: HTNState, ToState: HTNState>(_ from: FromState, _ to: ToState) where FromState.StateType == ToState.StateType {
    
}

class stateDelegate<T> {
    var state: T;
    var delegate: HTNState;
    init(_ state: T, _ delegate: HTNState) {
        self.state = state;
        self.delegate = delegate;
    }
}
