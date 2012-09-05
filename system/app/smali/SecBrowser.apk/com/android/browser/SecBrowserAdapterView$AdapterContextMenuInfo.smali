.class public Lcom/android/browser/SecBrowserAdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "SecBrowserAdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SecBrowserAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .registers 5
    .parameter "targetView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 398
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p1, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 400
    iput p2, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterContextMenuInfo;->position:I

    .line 401
    iput-wide p3, p0, Lcom/android/browser/SecBrowserAdapterView$AdapterContextMenuInfo;->id:J

    .line 402
    return-void
.end method
