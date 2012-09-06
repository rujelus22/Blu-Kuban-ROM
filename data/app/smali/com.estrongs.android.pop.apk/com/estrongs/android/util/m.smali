.class public Lcom/estrongs/android/util/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/estrongs/android/util/o;

.field public static final b:Lcom/estrongs/android/util/q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/estrongs/android/util/o;

    invoke-direct {v0}, Lcom/estrongs/android/util/o;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/m;->a:Lcom/estrongs/android/util/o;

    new-instance v0, Lcom/estrongs/android/util/q;

    invoke-direct {v0}, Lcom/estrongs/android/util/q;-><init>()V

    sput-object v0, Lcom/estrongs/android/util/m;->b:Lcom/estrongs/android/util/q;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/estrongs/android/util/m;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method
