.class Lcom/sprint/w/installer/PackUninstaller$CategoryItem;
.super Ljava/lang/Object;
.source "PackUninstaller.java"

# interfaces
.implements Lcom/sprint/w/installer/PackUninstaller$Listable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackUninstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CategoryItem"
.end annotation


# instance fields
.field checked:Z

.field expanded:Z

.field icon:I

.field mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sprint/w/installer/PackUninstaller$Item;",
            ">;"
        }
    .end annotation
.end field

.field packId:Ljava/lang/String;

.field packName:Ljava/lang/String;

.field packVersion:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 6
    .parameter "title"
    .parameter "packName"
    .parameter "expanded"
    .parameter "checked"

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->title:Ljava/lang/String;

    .line 329
    iput-object p2, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->packName:Ljava/lang/String;

    .line 330
    iput-boolean p4, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->checked:Z

    .line 331
    iput-boolean p3, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->expanded:Z

    .line 332
    const-string v0, "Applications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 333
    const v0, 0x7f02001a

    iput v0, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->icon:I

    .line 339
    :cond_18
    :goto_18
    return-void

    .line 334
    :cond_19
    const-string v0, "Wallpapers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 335
    const v0, 0x7f020026

    iput v0, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->icon:I

    goto :goto_18

    .line 336
    :cond_27
    const-string v0, "Ringtones"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 337
    const v0, 0x7f020020

    iput v0, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->icon:I

    goto :goto_18
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public setChecked(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/sprint/w/installer/PackUninstaller$CategoryItem;->checked:Z

    .line 347
    return-void
.end method
