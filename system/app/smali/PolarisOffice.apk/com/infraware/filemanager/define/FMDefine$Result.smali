.class public Lcom/infraware/filemanager/define/FMDefine$Result;
.super Ljava/lang/Object;
.source "FMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/define/FMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# static fields
.field public static final FAIL_ALREADY_EXIST:I = -0x3

.field public static final FAIL_HIDDEN_DELETE_FILE:I = -0xf

.field public static final FAIL_HIDDEN_MOVE_FILE:I = -0x10

.field public static final FAIL_INSUFFICIENT_MEMORY:I = -0xc

.field public static final FAIL_INVALID_ACCOUNT:I = -0x11

.field public static final FAIL_INVALID_FILELENGTH:I = -0xa

.field public static final FAIL_INVALID_FILENAME:I = -0x9

.field public static final FAIL_INVALID_OPERATION:I = -0x6

.field public static final FAIL_NETWORK_ERROR:I = -0x8

.field public static final FAIL_RECURSIVE_FOLDER:I = -0xb

.field public static final FAIL_RENAME_ERROR:I = -0xe

.field public static final FAIL_SAMEDIR:I = -0x2

.field public static final FAIL_SRC_NOT_DEFINED:I = -0x5

.field public static final FAIL_SRC_NOT_EXIST:I = -0x4

.field public static final FAIL_UNKNOWN:I = -0x1

.field public static final FAIL_USER_CANCELED:I = -0x7

.field public static final FAIL_WEBSTORAGE_BUSY:I = -0xd

.field public static final PROGRESS_END:I = 0x5

.field public static final PROGRESS_IN:I = 0x3

.field public static final PROGRESS_INIT:I = 0x1

.field public static final PROGRESS_OUT:I = 0x4

.field public static final PROGRESS_UNIT:I = 0x2

.field public static final SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/define/FMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/define/FMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/infraware/filemanager/define/FMDefine$Result;->this$0:Lcom/infraware/filemanager/define/FMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
