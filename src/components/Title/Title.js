import React, {Component} from 'react';
import './Title.css';

export class Title extends Component {
    render() {
        return (
            <h2 className='Title'>{this.props.children}</h2>
        )
    }
}