.class public final Lcom/twitter/android/api/o;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/api/o;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/twitter/android/api/o;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/api/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/api/o;->b:Ljava/util/ArrayList;

    return-object v0
.end method
