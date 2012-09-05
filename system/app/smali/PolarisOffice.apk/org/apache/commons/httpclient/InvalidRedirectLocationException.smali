.class public Lorg/apache/commons/httpclient/InvalidRedirectLocationException;
.super Lorg/apache/commons/httpclient/RedirectException;
.source "InvalidRedirectLocationException.java"


# instance fields
.field private final location:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "message"
    .parameter "location"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/commons/httpclient/RedirectException;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p2, p0, Lorg/apache/commons/httpclient/InvalidRedirectLocationException;->location:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "message"
    .parameter "location"
    .parameter "cause"

    .prologue
    .line 66
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/httpclient/RedirectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    iput-object p2, p0, Lorg/apache/commons/httpclient/InvalidRedirectLocationException;->location:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/commons/httpclient/InvalidRedirectLocationException;->location:Ljava/lang/String;

    return-object v0
.end method
