.class public final Lcom/twitter/android/de;
.super Lcom/twitter/android/dd;


# instance fields
.field final a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3}, Lcom/twitter/android/dd;-><init>(Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/twitter/android/de;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/de;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/de;->i:Ljava/lang/String;

    return-void
.end method
