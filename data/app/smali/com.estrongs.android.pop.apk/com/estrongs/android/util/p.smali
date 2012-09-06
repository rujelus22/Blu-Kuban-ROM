.class public Lcom/estrongs/android/util/p;
.super Lcom/estrongs/android/util/n;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/util/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/File;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
