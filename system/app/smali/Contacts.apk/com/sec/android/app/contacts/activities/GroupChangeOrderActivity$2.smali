.class Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$2;
.super Ljava/lang/Object;
.source "GroupChangeOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->setActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity$2;->this$0:Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/GroupChangeOrderActivity;->finish()V

    .line 97
    return-void
.end method
