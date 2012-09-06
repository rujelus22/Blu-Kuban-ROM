.class final Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MarkAllAsReadDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog$QueryHandler;->this$0:Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog$QueryHandler;-><init>(Lcom/google/android/apps/reader/dialog/MarkAllAsReadDialog;)V

    return-void
.end method
