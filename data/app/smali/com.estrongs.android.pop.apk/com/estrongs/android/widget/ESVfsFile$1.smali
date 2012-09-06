.class Lcom/estrongs/android/widget/ESVfsFile$1;
.super Lcom/estrongs/android/widget/ESVfsFile;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/estrongs/android/widget/ESVfsFile;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/ESVfsFile;Lcom/estrongs/android/pop/d/f;Ljava/lang/String;Z)V
    .registers 5

    iput-object p1, p0, Lcom/estrongs/android/widget/ESVfsFile$1;->this$0:Lcom/estrongs/android/widget/ESVfsFile;

    invoke-direct {p0, p2, p3, p4}, Lcom/estrongs/android/widget/ESVfsFile;-><init>(Lcom/estrongs/android/pop/d/f;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getParentFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/ESVfsFile$1;->this$0:Lcom/estrongs/android/widget/ESVfsFile;

    return-object v0
.end method
