.class Lcom/estrongs/android/pop/view/lt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/lt;->a:Lcom/estrongs/android/pop/view/SearchAdvanceConditionView;

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
