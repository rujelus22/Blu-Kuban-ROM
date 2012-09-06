.class final Lcom/google/android/apps/reader/dialog/RenameDialog$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "RenameDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/dialog/RenameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;)V
    .registers 2
    .parameter "cr"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Lcom/google/android/apps/reader/dialog/RenameDialog$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/dialog/RenameDialog$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method
