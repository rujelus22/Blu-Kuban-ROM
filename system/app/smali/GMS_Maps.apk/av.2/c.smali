.class public Lav/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private final c:I

.field private final d:I

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, -0x1

    .line 21
    sput v0, Lav/c;->a:I

    .line 22
    sput v0, Lav/c;->b:I

    return-void
.end method

.method public constructor <init>(IIILjava/lang/CharSequence;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p2, p0, Lav/c;->d:I

    .line 34
    iput p1, p0, Lav/c;->c:I

    .line 35
    iput-object p4, p0, Lav/c;->e:Ljava/lang/CharSequence;

    .line 36
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .registers 2

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lav/c;->c:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lav/c;->d:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lav/c;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lav/c;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasSubMenu()Z
    .registers 2

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public isActionViewExpanded()Z
    .registers 2

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lav/c;->i:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lav/c;->h:Z

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 201
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 193
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 189
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 141
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 149
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 157
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-boolean p1, p0, Lav/c;->i:Z

    .line 95
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 88
    iput p1, p0, Lav/c;->g:I

    .line 89
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 113
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 121
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 133
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 222
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 174
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 129
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 2
    .parameter

    .prologue
    .line 182
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 185
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 109
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lav/c;->e:Ljava/lang/CharSequence;

    .line 61
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lav/c;->f:Ljava/lang/CharSequence;

    .line 67
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lav/c;->h:Z

    .line 78
    return-object p0
.end method
