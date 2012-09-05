.class Lcom/samsung/swift/security/SecurityPreferencesActivity$9;
.super Ljava/lang/Object;
.source "SecurityPreferencesActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/security/SecurityPreferencesActivity;->showSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/swift/security/Connection;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 581
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$9;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/swift/security/Connection;Lcom/samsung/swift/security/Connection;)I
    .registers 11
    .parameter "object1"
    .parameter "object2"

    .prologue
    const-wide/16 v6, 0x0

    .line 584
    invoke-interface {p2}, Lcom/samsung/swift/security/Connection;->getLastAccessTime()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/samsung/swift/security/Connection;->getLastAccessTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 585
    .local v0, v:J
    cmp-long v2, v0, v6

    if-gez v2, :cond_12

    const/4 v2, -0x1

    :goto_11
    return v2

    :cond_12
    cmp-long v2, v0, v6

    if-lez v2, :cond_18

    const/4 v2, 0x1

    goto :goto_11

    :cond_18
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 581
    check-cast p1, Lcom/samsung/swift/security/Connection;

    .end local p1
    check-cast p2, Lcom/samsung/swift/security/Connection;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/swift/security/SecurityPreferencesActivity$9;->compare(Lcom/samsung/swift/security/Connection;Lcom/samsung/swift/security/Connection;)I

    move-result v0

    return v0
.end method
