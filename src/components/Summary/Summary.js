import React, { Component } from 'react';
import './Summary.css';

export class Summary extends Component {
    render() {
        return (
            <p className='Summary'>{this.props.children}</p>
        )
    }
}