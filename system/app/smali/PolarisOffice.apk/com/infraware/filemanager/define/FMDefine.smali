.class public Lcom/infraware/filemanager/define/FMDefine;
.super Ljava/lang/Object;
.source "FMDefine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/define/FMDefine$Charset;,
        Lcom/infraware/filemanager/define/FMDefine$CopyMode;,
        Lcom/infraware/filemanager/define/FMDefine$DeleteMode;,
        Lcom/infraware/filemanager/define/FMDefine$DownloadMode;,
        Lcom/infraware/filemanager/define/FMDefine$DrmRightState;,
        Lcom/infraware/filemanager/define/FMDefine$ExtraKey;,
        Lcom/infraware/filemanager/define/FMDefine$FilterType;,
        Lcom/infraware/filemanager/define/FMDefine$HandlerState;,
        Lcom/infraware/filemanager/define/FMDefine$InternalMode;,
        Lcom/infraware/filemanager/define/FMDefine$ListType;,
        Lcom/infraware/filemanager/define/FMDefine$MediaDBAction;,
        Lcom/infraware/filemanager/define/FMDefine$Operation;,
        Lcom/infraware/filemanager/define/FMDefine$Popup;,
        Lcom/infraware/filemanager/define/FMDefine$Request;,
        Lcom/infraware/filemanager/define/FMDefine$Result;,
        Lcom/infraware/filemanager/define/FMDefine$SearchType;,
        Lcom/infraware/filemanager/define/FMDefine$SelectMode;,
        Lcom/infraware/filemanager/define/FMDefine$Sort;,
        Lcom/infraware/filemanager/define/FMDefine$Type;,
        Lcom/infraware/filemanager/define/FMDefine$Unit;
    }
.end annotation


# static fields
.field public static final BROADCAST_DATA_COUNT:I = 0xc8

.field public static final BROADCAST_SCAN_COUNT:I = 0x190

.field public static final MAX_EXTENSION_LENGTH:I = 0x5

.field public static final MAX_FILENAME_LENGTH:I = 0x3c

.field public static final PROGRESS_FILE_COUNT:I = 0x190


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
