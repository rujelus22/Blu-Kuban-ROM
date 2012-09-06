.class final Lcom/dropbox/android/provider/n;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static a:Ljava/text/Collator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 304
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/n;->a:Ljava/text/Collator;

    .line 306
    sget-object v0, Lcom/dropbox/android/provider/n;->a:Ljava/text/Collator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setDecomposition(I)V

    .line 307
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/provider/m;)V
    .registers 2
    .parameter

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/dropbox/android/provider/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;Ljava/io/File;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 311
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_e

    .line 312
    const/4 v0, -0x1

    .line 316
    :goto_d
    return v0

    .line 313
    :cond_e
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 314
    const/4 v0, 0x1

    goto :goto_d

    .line 316
    :cond_1c
    sget-object v0, Lcom/dropbox/android/provider/n;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_d
.end method

.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 303
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/android/provider/n;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
