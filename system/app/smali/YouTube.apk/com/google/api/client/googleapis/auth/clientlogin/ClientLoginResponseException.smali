.class public Lcom/google/api/client/googleapis/auth/clientlogin/ClientLoginResponseException;
.super Lcom/google/api/client/http/HttpResponseException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x45085391c816c270L


# instance fields
.field private final transient details:Lcom/google/api/client/googleapis/auth/clientlogin/b;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/p;Lcom/google/api/client/googleapis/auth/clientlogin/b;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p3}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/p;Ljava/lang/String;)V

    .line 46
    iput-object p2, p0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLoginResponseException;->details:Lcom/google/api/client/googleapis/auth/clientlogin/b;

    .line 47
    return-void
.end method


# virtual methods
.method public final getDetails()Lcom/google/api/client/googleapis/auth/clientlogin/b;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLoginResponseException;->details:Lcom/google/api/client/googleapis/auth/clientlogin/b;

    return-object v0
.end method
