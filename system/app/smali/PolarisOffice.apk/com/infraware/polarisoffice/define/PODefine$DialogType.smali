.class public Lcom/infraware/polarisoffice/define/PODefine$DialogType;
.super Ljava/lang/Object;
.source "PODefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/define/PODefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogType"
.end annotation


# static fields
.field public static final CLEAR_HISTORY:I = 0x5

.field public static final CREATE_FOLDER:I = 0x0

.field public static final DELETE_FAVORITE:I = 0x6

.field public static final DELETE_FILE:I = 0x4

.field public static final NONE:I = -0x1

.field public static final RENAME_EXT:I = 0x3

.field public static final RENAME_FILE:I = 0x2

.field public static final RENAME_FOLDER:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
