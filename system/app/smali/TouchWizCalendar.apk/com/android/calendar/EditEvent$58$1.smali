.class Lcom/android/calendar/EditEvent$58$1;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent$58;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/calendar/EditEvent$58;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent$58;)V
    .registers 2
    .parameter

    .prologue
    .line 2904
    iput-object p1, p0, Lcom/android/calendar/EditEvent$58$1;->this$1:Lcom/android/calendar/EditEvent$58;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2906
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2907
    return-void
.end method
