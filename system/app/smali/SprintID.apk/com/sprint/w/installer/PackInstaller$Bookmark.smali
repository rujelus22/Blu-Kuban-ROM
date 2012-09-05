.class Lcom/sprint/w/installer/PackInstaller$Bookmark;
.super Ljava/lang/Object;
.source "PackInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bookmark"
.end annotation


# instance fields
.field title:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "title"
    .parameter "url"

    .prologue
    .line 2368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2369
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$Bookmark;->title:Ljava/lang/String;

    .line 2370
    iput-object p2, p0, Lcom/sprint/w/installer/PackInstaller$Bookmark;->url:Ljava/lang/String;

    .line 2371
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2375
    const-string v0, "[bookmark] title=\'%s\' url=\'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller$Bookmark;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sprint/w/installer/PackInstaller$Bookmark;->url:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
