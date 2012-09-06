.class Lcom/estrongs/android/widget/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/w;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/w;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/x;->a:Lcom/estrongs/android/widget/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method
