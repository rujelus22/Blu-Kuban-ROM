.class public Lcom/infraware/polarisoffice/define/PODefine$Request;
.super Ljava/lang/Object;
.source "PODefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/define/PODefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final DIALOG_ADD_ACCOUNT:I = 0x1008

.field public static final DIALOG_COPY_FOLDER:I = 0x1006

.field public static final DIALOG_DOWNLOAD_FOLDER:I = 0x1007

.field public static final DIALOG_FAVORITE_LIST:I = 0x100c

.field public static final DIALOG_MOVE_FOLDER:I = 0x1005

.field public static final DIALOG_OPEN_DOCUMENT:I = 0x1002

.field public static final DIALOG_OPEN_LOCALLIST:I = 0x100a

.field public static final DIALOG_OPEN_SETTINGS:I = 0x1009

.field public static final DIALOG_OPEN_WEBLIST:I = 0x100b

.field public static final DIALOG_RECENT_FILE:I = 0x1000

.field public static final DIALOG_SEARCH_INPUT:I = 0x100d

.field public static final DIALOG_SEARCH_LIST:I = 0x100e

.field public static final DIALOG_SHOW_LOGO:I = 0x100f

.field public static final DIALOG_SHOW_PROPERTY:I = 0x1003

.field public static final DIALOG_TEMPLATE_LIST:I = 0x1010

.field public static final DIALOG_UPLOAD_FILE:I = 0x1004

.field public static final DIALOG_USER_REGIST:I = 0x1001

.field private static final PORequest:I = 0x1000


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
