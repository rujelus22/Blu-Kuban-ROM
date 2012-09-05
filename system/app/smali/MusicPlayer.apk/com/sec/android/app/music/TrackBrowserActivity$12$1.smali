.class Lcom/sec/android/app/music/TrackBrowserActivity$12$1;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity$12;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/music/TrackBrowserActivity$12;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity$12;)V
    .registers 2
    .parameter

    .prologue
    .line 836
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$12$1;->this$1:Lcom/sec/android/app/music/TrackBrowserActivity$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 839
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 840
    return-void
.end method
