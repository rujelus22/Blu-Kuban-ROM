.class Lcom/android/calendar/ImportExportVCalendar$2;
.super Ljava/lang/Object;
.source "ImportExportVCalendar.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/ImportExportVCalendar;->getVCalFilePathList(Landroid/app/Activity;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/ImportExportVCalendar;


# direct methods
.method constructor <init>(Lcom/android/calendar/ImportExportVCalendar;)V
    .registers 2
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/calendar/ImportExportVCalendar$2;->this$0:Lcom/android/calendar/ImportExportVCalendar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 273
    const-string v0, ".vcs"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
