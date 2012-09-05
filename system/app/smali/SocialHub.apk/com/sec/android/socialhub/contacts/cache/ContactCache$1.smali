.class Lcom/sec/android/socialhub/contacts/cache/ContactCache$1;
.super Landroid/database/ContentObserver;
.source "ContactCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/contacts/cache/ContactCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/contacts/cache/ContactCache;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/contacts/cache/ContactCache;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache$1;->this$0:Lcom/sec/android/socialhub/contacts/cache/ContactCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .parameter "selfChange"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 67
    const-string v0, "ContactCache"

    const-string v1, "onChange()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact Provider is changed!! self - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCache$1;->this$0:Lcom/sec/android/socialhub/contacts/cache/ContactCache;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/contacts/cache/ContactCache;->invalidateContact()V

    .line 69
    return-void
.end method
