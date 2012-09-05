.class public Lcom/diotek/dhwr/eur/b2b/DioHWRAbout;
.super Landroid/app/Activity;
.source "DioHWRAbout.java"


# instance fields
.field final URL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 9
    const-string v0, "file:///android_asset/about.html"

    iput-object v0, p0, Lcom/diotek/dhwr/eur/b2b/DioHWRAbout;->URL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/diotek/dhwr/eur/b2b/DioHWRAbout;->setContentView(I)V

    .line 25
    return-void
.end method
