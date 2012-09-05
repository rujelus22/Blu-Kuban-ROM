.class Lcom/sprint/w/installer/PackUninstaller$Item;
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
    name = "Item"
.end annotation


# instance fields
.field checked:Z

.field id:I

.field packId:Ljava/lang/String;

.field packName:Ljava/lang/String;

.field packNames:[Ljava/lang/String;

.field packVersion:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field path:Ljava/lang/String;

.field title:Ljava/lang/String;

.field type:I

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .registers 2
    .parameter "checked"

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-boolean p1, p0, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    .line 298
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 301
    iget v0, p0, Lcom/sprint/w/installer/PackUninstaller$Item;->type:I

    packed-switch v0, :pswitch_data_c

    .line 307
    :pswitch_5
    const/4 v0, 0x1

    :goto_6
    return v0

    .line 303
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_6

    .line 305
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_6

    .line 301
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public setChecked(Z)V
    .registers 2
    .parameter "value"

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/sprint/w/installer/PackUninstaller$Item;->checked:Z

    .line 313
    return-void
.end method
