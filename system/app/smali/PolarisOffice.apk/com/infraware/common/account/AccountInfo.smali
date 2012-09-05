.class public Lcom/infraware/common/account/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"


# instance fields
.field private nIndex:I

.field private nService:I

.field private strEmail:Ljava/lang/String;

.field private strPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "index"
    .parameter "service"
    .parameter "email"
    .parameter "password"

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v0, p0, Lcom/infraware/common/account/AccountInfo;->nIndex:I

    .line 6
    iput v0, p0, Lcom/infraware/common/account/AccountInfo;->nService:I

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/common/account/AccountInfo;->strEmail:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/common/account/AccountInfo;->strPassword:Ljava/lang/String;

    .line 12
    iput p1, p0, Lcom/infraware/common/account/AccountInfo;->nIndex:I

    .line 13
    iput p2, p0, Lcom/infraware/common/account/AccountInfo;->nService:I

    .line 14
    iput-object p3, p0, Lcom/infraware/common/account/AccountInfo;->strEmail:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/infraware/common/account/AccountInfo;->strPassword:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/infraware/common/account/AccountInfo;->strEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lcom/infraware/common/account/AccountInfo;->nIndex:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/infraware/common/account/AccountInfo;->strPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getService()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/infraware/common/account/AccountInfo;->nService:I

    return v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2
    .parameter "email"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/infraware/common/account/AccountInfo;->strEmail:Ljava/lang/String;

    return-void
.end method

.method public setIndex(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 18
    iput p1, p0, Lcom/infraware/common/account/AccountInfo;->nIndex:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .parameter "password"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/infraware/common/account/AccountInfo;->strPassword:Ljava/lang/String;

    return-void
.end method

.method public setService(I)V
    .registers 2
    .parameter "service"

    .prologue
    .line 19
    iput p1, p0, Lcom/infraware/common/account/AccountInfo;->nService:I

    return-void
.end method
