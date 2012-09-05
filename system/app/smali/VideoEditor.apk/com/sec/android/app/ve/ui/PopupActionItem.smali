.class public Lcom/sec/android/app/ve/ui/PopupActionItem;
.super Ljava/lang/Object;
.source "PopupActionItem.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private listener:Landroid/view/View$OnClickListener;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/PopupActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 18
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/PopupActionItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getListener()Landroid/view/View$OnClickListener;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/PopupActionItem;->listener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/PopupActionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/PopupActionItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 33
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/PopupActionItem;->listener:Landroid/view/View$OnClickListener;

    .line 43
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/PopupActionItem;->title:Ljava/lang/String;

    .line 23
    return-void
.end method
