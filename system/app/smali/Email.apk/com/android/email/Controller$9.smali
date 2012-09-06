.class Lcom/android/email/Controller$9;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->deleteMessages([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$messageIds:[J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;[J)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    iput-object p2, p0, Lcom/android/email/Controller$9;->val$messageIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/email/Controller$9;->val$messageIds:[J

    .local v0, arr$:[J
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_10

    aget-wide v3, v0, v1

    .line 765
    .local v3, messageId:J
    iget-object v5, p0, Lcom/android/email/Controller$9;->this$0:Lcom/android/email/Controller;

    invoke-virtual {v5, v3, v4}, Lcom/android/email/Controller;->deleteMessageSync(J)V

    .line 764
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 767
    .end local v3           #messageId:J
    :cond_10
    return-void
.end method
