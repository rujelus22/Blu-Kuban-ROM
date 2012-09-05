.class Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;
.super Ljava/lang/Object;
.source "InteractionTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->actionbarsetup()Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->finish()V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity$5;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;

    #calls: Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->hideSoftKeyboard()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionTabActivity;)V

    .line 437
    return-void
.end method
