.class Lcom/vlingo/client/car/voicedial/AutoDialContact$1;
.super Ljava/lang/Object;
.source "AutoDialContact.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/voicedial/AutoDialContact;->initialize(Lcom/vlingo/client/core/contacts/DisplayItem;Lcom/vlingo/client/car/voicedial/AutoDialContact$AutoDialContactActionListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/voicedial/AutoDialContact;

.field final synthetic val$item:Lcom/vlingo/client/core/contacts/DisplayItem;

.field final synthetic val$listener:Lcom/vlingo/client/car/voicedial/AutoDialContact$AutoDialContactActionListener;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/voicedial/AutoDialContact;Lcom/vlingo/client/car/voicedial/AutoDialContact$AutoDialContactActionListener;Lcom/vlingo/client/core/contacts/DisplayItem;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact$1;->this$0:Lcom/vlingo/client/car/voicedial/AutoDialContact;

    iput-object p2, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact$1;->val$listener:Lcom/vlingo/client/car/voicedial/AutoDialContact$AutoDialContactActionListener;

    iput-object p3, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact$1;->val$item:Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact$1;->val$listener:Lcom/vlingo/client/car/voicedial/AutoDialContact$AutoDialContactActionListener;

    iget-object v1, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact$1;->this$0:Lcom/vlingo/client/car/voicedial/AutoDialContact;

    iget-object v2, p0, Lcom/vlingo/client/car/voicedial/AutoDialContact$1;->val$item:Lcom/vlingo/client/core/contacts/DisplayItem;

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/car/voicedial/AutoDialContact$AutoDialContactActionListener;->onAutoDialed(Lcom/vlingo/client/car/voicedial/AutoDialContact;Lcom/vlingo/client/core/contacts/DisplayItem;)V

    .line 70
    return-void
.end method
