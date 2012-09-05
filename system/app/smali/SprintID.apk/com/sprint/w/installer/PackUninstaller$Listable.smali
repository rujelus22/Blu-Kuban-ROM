.class interface abstract Lcom/sprint/w/installer/PackUninstaller$Listable;
.super Ljava/lang/Object;
.source "PackUninstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackUninstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Listable"
.end annotation


# static fields
.field public static final TYPE_APP:I = 0x3

.field public static final TYPE_CATEGORY:I = 0x0

.field public static final TYPE_COUNT:I = 0x4

.field public static final TYPE_ITEM:I = 0x1

.field public static final TYPE_WALLPAPER:I = 0x2


# virtual methods
.method public abstract getType()I
.end method

.method public abstract setChecked(Z)V
.end method
