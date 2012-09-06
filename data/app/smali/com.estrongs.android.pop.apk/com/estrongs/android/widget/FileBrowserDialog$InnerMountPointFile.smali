.class public Lcom/estrongs/android/widget/FileBrowserDialog$InnerMountPointFile;
.super Lcom/estrongs/android/widget/MountPointFile;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/estrongs/android/widget/FileBrowserDialog;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/widget/FileBrowserDialog;Lcom/estrongs/android/pop/d/f;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/estrongs/android/widget/FileBrowserDialog$InnerMountPointFile;->this$0:Lcom/estrongs/android/widget/FileBrowserDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/estrongs/android/widget/MountPointFile;-><init>(Lcom/estrongs/android/pop/d/f;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getParentFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/widget/FileBrowserDialog$InnerMountPointFile;->this$0:Lcom/estrongs/android/widget/FileBrowserDialog;

    iget-object v0, v0, Lcom/estrongs/android/widget/FileBrowserDialog;->f:Ljava/io/File;

    return-object v0
.end method
