import React from 'react'

const Pages = (props) => {
    const pages = props.pages

    const renderPages = () => {
        return pages.map( (page) => {
            return(
                <div>
                    <h1>{page.title}</h1>
                    <p>{page.author}</p>
                    <p>{page.id}</p>
                    <p>{page.body}</p>
                </div>
            )
        })
    }

    return (
        <div>
            <h1>Pages here</h1>
            {renderPages()}
        </div>
    )
}

export default Pages