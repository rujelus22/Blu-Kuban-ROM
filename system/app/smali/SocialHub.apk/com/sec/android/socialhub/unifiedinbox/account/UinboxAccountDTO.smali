.class public Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
.super Ljava/lang/Object;
.source "UinboxAccountDTO.java"


# instance fields
.field public account:Ljava/lang/String;

.field public app:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public email_id:I

.field public is_eas:I

.field public is_new:I

.field public last_email:I

.field public presence:I

.field public real_email:I

.field public unread:I

.field public user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;I)V
    .registers 11
    .parameter "app"
    .parameter "account"
    .parameter "email"
    .parameter "is_new"
    .parameter "unread"
    .parameter "email_id"
    .parameter "user_name"
    .parameter "presence"
    .parameter "displayName"
    .parameter "is_eas"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->app:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->account:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    .line 29
    iput p6, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    .line 30
    iput-object p7, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->user_name:Ljava/lang/String;

    .line 31
    iput p4, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->is_new:I

    .line 32
    iput p5, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->unread:I

    .line 33
    iput p8, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->presence:I

    .line 34
    iput-object p9, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->displayName:Ljava/lang/String;

    .line 35
    iput p10, p0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->is_eas:I

    .line 36
    return-void
.end method
