import SwiftEngine

//se: require /common.swift

func entryPoint(ctx: RequestContext) {
	
	ctx.addHandler(forMethod:"GET", withRoute:"*"){
		req, res in
		res.write("Hello from SwiftEngine! (v77) ")
		Common.printContextInfo(for: ctx)
	}
	
	ctx.addHandler(forMethod:"POST", withRoute:"*"){
		req, res in
		res.write("Handle for POST request method")
	}
	
	ctx.addHandler(forMethod:"*", withRoute:"*"){
		req, res in
		res.write("Handle for catch-all")
	}

}
