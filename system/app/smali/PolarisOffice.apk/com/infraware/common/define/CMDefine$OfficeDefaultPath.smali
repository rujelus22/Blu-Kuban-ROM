.class public Lcom/infraware/common/define/CMDefine$OfficeDefaultPath;
.super Ljava/lang/Object;
.source "CMDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/define/CMDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OfficeDefaultPath"
.end annotation


# static fields
.field public static final BOOKCLIP_DIR_NAME:Ljava/lang/String; = "polarisBookclip"

.field public static final BOOKCLIP_PATH:Ljava/lang/String; = "/mnt/sdcard/.polarisOffice/polarisBookclip"

.field public static final BOOKMARK_DIR_NAME:Ljava/lang/String; = "polarisBookmark"

.field public static final BOOKMARK_PATH:Ljava/lang/String; = "/mnt/sdcard/.polarisOffice/polarisBookmark"

.field public static final OFFICE_ROOT_PATH:Ljava/lang/String; = "/mnt/sdcard/.polarisOffice/"

.field public static final PRINT_DIR_NAME:Ljava/lang/String; = "polarisPrint"

.field public static final PRINT_PATH:Ljava/lang/String; = "/mnt/sdcard/.polarisOffice/polarisPrint"

.field public static final SDROOT_PATH:Ljava/lang/String; = "/mnt/sdcard/"

.field public static final TEMP_DIR_NAME:Ljava/lang/String; = "polarisTemp"

.field public static final TEMP_PATH:Ljava/lang/String; = "/mnt/sdcard/.polarisOffice/polarisTemp"


# instance fields
.field final synthetic this$0:Lcom/infraware/common/define/CMDefine;


# direct methods
.method public constructor <init>(Lcom/infraware/common/define/CMDefine;)V
    .registers 2
    .parameter

    .prologue
    .line 14
    iput-object p1, p0, Lcom/infraware/common/define/CMDefine$OfficeDefaultPath;->this$0:Lcom/infraware/common/define/CMDefine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
