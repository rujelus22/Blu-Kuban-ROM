.class Lcom/android/email/activity/EmailDocSearchQuery$1;
.super Ljava/lang/Object;
.source "EmailDocSearchQuery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/EmailDocSearchQuery;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/EmailDocSearchQuery;


# direct methods
.method constructor <init>(Lcom/android/email/activity/EmailDocSearchQuery;)V
    .registers 2
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/email/activity/EmailDocSearchQuery$1;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/email/activity/EmailDocSearchQuery$1;->this$0:Lcom/android/email/activity/EmailDocSearchQuery;

    invoke-virtual {v0}, Lcom/android/email/activity/EmailDocSearchQuery;->finish()V

    .line 232
    return-void
.end method
