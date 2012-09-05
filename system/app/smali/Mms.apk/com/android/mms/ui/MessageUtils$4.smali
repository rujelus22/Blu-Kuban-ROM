.class final Lcom/android/mms/ui/MessageUtils$4;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;JILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$map:Ljava/util/Map;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Ljava/util/Map;Landroid/content/Context;ILjava/lang/Runnable;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1574
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$4;->val$map:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$4;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/android/mms/ui/MessageUtils$4;->val$status:I

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$4;->val$callback:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1576
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$4;->val$map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1577
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/mms/ui/MessageUtils$4;->val$context:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v5, p0, Lcom/android/mms/ui/MessageUtils$4;->val$status:I

    invoke-static {v4, v2, v3, v5}, Lcom/android/mms/transaction/MmsMessageSender;->sendReadRec(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_a

    .line 1580
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2a
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$4;->val$callback:Ljava/lang/Runnable;

    if-eqz v2, :cond_33

    .line 1581
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$4;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1583
    :cond_33
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1584
    return-void
.end method
