import React, { Component } from 'react';
import './Author.css';
import {AuthorName} from "../AuthorName/AuthorName";
import {AuthorPhoto} from "../AuthorPhoto/AuthorPhoto";

export class Author extends Component {
    render() {
        return (
            <div className='Author'>
                <AuthorName name={this.props.name} />
                <AuthorPhoto url={this.props.photo} />
            </div>
        )
    }
}