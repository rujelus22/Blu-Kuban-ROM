.class Lcom/android/mms/ui/ConversationListItem$1;
.super Ljava/lang/Object;
.source "ConversationListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListItem;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListItem;)V
    .registers 2
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListItem$1;->this$0:Lcom/android/mms/ui/ConversationListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListItem$1;->this$0:Lcom/android/mms/ui/ConversationListItem;

    #calls: Lcom/android/mms/ui/ConversationListItem;->updateFromView()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListItem;->access$000(Lcom/android/mms/ui/ConversationListItem;)V

    .line 351
    return-void
.end method
