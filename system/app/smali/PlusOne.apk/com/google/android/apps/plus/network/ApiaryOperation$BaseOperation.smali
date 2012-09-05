.class abstract Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;
.super Ljava/lang/Object;
.source "ApiaryOperation.java"

# interfaces
.implements Lcom/google/android/apps/plus/network/ApiaryOperation$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/network/ApiaryOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseOperation"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mErrorCode:I

.field protected mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;->mContext:Landroid/content/Context;

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;->mErrorCode:I

    .line 148
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;->mErrorMessage:Ljava/lang/String;

    .line 149
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/apps/plus/network/ApiaryOperation$BaseOperation;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method
