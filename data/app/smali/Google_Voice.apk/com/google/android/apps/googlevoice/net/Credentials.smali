.class public Lcom/google/android/apps/googlevoice/net/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# instance fields
.field private authToken:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "userName"
    .parameter "authToken"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 18
    invoke-static {p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 19
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/net/Credentials;->userName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/net/Credentials;->authToken:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getAuthToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/Credentials;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/net/Credentials;->userName:Ljava/lang/String;

    return-object v0
.end method
