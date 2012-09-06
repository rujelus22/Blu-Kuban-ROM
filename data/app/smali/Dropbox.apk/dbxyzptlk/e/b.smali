.class public Ldbxyzptlk/e/b;
.super Ldbxyzptlk/r/a;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Ldbxyzptlk/e/b;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldbxyzptlk/e/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Ldbxyzptlk/r/a;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Landroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 9
    check-cast p2, [Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/b;->a(Landroid/content/Context;[Lcom/dropbox/android/filemanager/LocalEntry;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs a(Landroid/content/Context;[Lcom/dropbox/android/filemanager/LocalEntry;)Ljava/lang/Void;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/dropbox/android/filemanager/v;->a(Lcom/dropbox/android/filemanager/LocalEntry;)Z

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    return-void
.end method

.method protected bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 9
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/e/b;->a(Landroid/content/Context;Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Ljava/lang/Void;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    return-void
.end method
