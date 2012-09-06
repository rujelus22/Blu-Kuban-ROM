.class public final Lcom/twitter/android/network/ssl/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Map;

.field public static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/twitter/android/network/ssl/TwitterPins$1;

    invoke-direct {v0}, Lcom/twitter/android/network/ssl/TwitterPins$1;-><init>()V

    sput-object v0, Lcom/twitter/android/network/ssl/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/twitter/android/network/ssl/e;->b:[Ljava/lang/String;

    return-void
.end method
