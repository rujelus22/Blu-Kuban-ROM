.class public Lcom/infraware/filemanager/define/FMDefine$Popup;
.super Ljava/lang/Object;
.source "FMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/define/FMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Popup"
.end annotation


# static fields
.field public static final POPUP_DOWNLOAD_OVERWRITE:I = 0x12d

.field public static final POPUP_DOWNLOAD_WEBFILE:I = 0x12c

.field public static final POPUP_PASTE_OVERWRITE_COPY:I = 0xc8

.field public static final POPUP_PASTE_OVERWRITE_MOVE:I = 0xc9

.field public static final POPUP_UNZIP_INPUT_PASSWORD:I = 0x64

.field public static final POPUP_UNZIP_OVERWRITE:I = 0x65

.field public static final POPUP_UPLOAD_OVERWRITE:I = 0x12e


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/define/FMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/define/FMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/infraware/filemanager/define/FMDefine$Popup;->this$0:Lcom/infraware/filemanager/define/FMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
