import React from 'react'

const PageEdit = (props) => {
    const {page} = props
    return(
        <>
            <div>
                <h1>Edit Page Form</h1>
                <form action={`/pages/${page.id}`} method='post'>
                    <input type="hiddent" name="_method" value="patch" />

                    <p>title</p>
                    <input defaultValue={page.title} name='page[title]' />
                    <p>author</p>
                    <input defaultValue={page.author} name='page[author]' />
                    <p>body</p>
                    <textarea defaultValue={page.body} name='page[body]' />

                    <button type="submit">update</button>
                </form>
            </div>

        </>
    )
}

export default PageEdit