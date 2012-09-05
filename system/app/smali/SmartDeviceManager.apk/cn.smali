.class public final Lcn;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private push:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPush()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcn;->push:Ljava/lang/String;

    return-object v0
.end method

.method public final setPush(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcn;->push:Ljava/lang/String;

    .line 23
    return-void
.end method
