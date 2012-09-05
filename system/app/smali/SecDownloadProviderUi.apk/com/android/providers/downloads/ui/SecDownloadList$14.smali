.class Lcom/android/providers/downloads/ui/SecDownloadList$14;
.super Ljava/lang/Object;
.source "SecDownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/SecDownloadList;->viewOMADDInfo(Landroid/database/Cursor;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

.field final synthetic val$lID:J


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/SecDownloadList;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$14;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    iput-wide p2, p0, Lcom/android/providers/downloads/ui/SecDownloadList$14;->val$lID:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v5, 0x0

    .line 1278
    const-string v1, "SecDownloadList"

    const-string v2, "viewOMADDInfo : User select SAVE [CD_STATUS_USERCONFIRMED]"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1280
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "status"

    const/16 v2, 0xb7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1281
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$14;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/SecDownloadList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/providers/downloads/ui/SecDownloadList$14;->val$lID:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1285
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$14;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    const/4 v2, 0x0

    #setter for: Lcom/android/providers/downloads/ui/SecDownloadList;->bDDinfoViewed:Z
    invoke-static {v1, v2}, Lcom/android/providers/downloads/ui/SecDownloadList;->access$2202(Lcom/android/providers/downloads/ui/SecDownloadList;Z)Z

    .line 1287
    return-void
.end method
