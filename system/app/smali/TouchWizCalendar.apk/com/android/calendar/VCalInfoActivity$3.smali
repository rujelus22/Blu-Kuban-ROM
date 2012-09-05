.class Lcom/android/calendar/VCalInfoActivity$3;
.super Ljava/lang/Object;
.source "VCalInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/VCalInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/VCalInfoActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/VCalInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/calendar/VCalInfoActivity$3;->this$0:Lcom/android/calendar/VCalInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/calendar/VCalInfoActivity$3;->this$0:Lcom/android/calendar/VCalInfoActivity;

    invoke-virtual {v0}, Lcom/android/calendar/VCalInfoActivity;->finish()V

    .line 321
    return-void
.end method
