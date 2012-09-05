.class public Lcom/android/email/activity/IconListAdapter$IconListItem;
.super Ljava/lang/Object;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/IconListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconListItem"
.end annotation


# instance fields
.field private final mResource:Landroid/graphics/drawable/Drawable;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "title"
    .parameter "resource"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/android/email/activity/IconListAdapter$IconListItem;->mResource:Landroid/graphics/drawable/Drawable;

    .line 88
    iput-object p1, p0, Lcom/android/email/activity/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    .line 89
    return-void
.end method


# virtual methods
.method public getResource()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/email/activity/IconListAdapter$IconListItem;->mResource:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/email/activity/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
