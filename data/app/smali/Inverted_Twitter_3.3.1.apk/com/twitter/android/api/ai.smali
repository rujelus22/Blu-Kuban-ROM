.class public final Lcom/twitter/android/api/ai;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/twitter/android/api/ai;->c:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/twitter/android/api/ai;->b:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/twitter/android/api/ai;->a:Z

    return-void
.end method
