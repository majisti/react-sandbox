import React, { Component } from 'react';
import './Grid.css';

export class Grid extends Component {
    render() {
        return (
            <div className='Grid'>{this.props.children}</div>
        )
    }
}