.class public Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
.super Ljava/lang/Object;
.source "UinboxViewWrapper.java"


# instance fields
.field public ColorView_Account:Lcom/sec/android/socialhub/view/ListColorView;

.field public Delete_Check_box:Landroid/widget/CheckBox;

.field public ImageVeiw_Small_Im_Presence:Landroid/widget/ImageView;

.field public ImageView_ISP_Icon:Landroid/widget/ImageView;

.field public ImageView_Im_Presence:Landroid/widget/ImageView;

.field public ImageView_Premium_Icon:Landroid/widget/ImageView;

.field public ImageView_Split_Arrow:Landroid/widget/ImageView;

.field public Layout_Arrow:Landroid/widget/LinearLayout;

.field public Layout_Badge_EMAIL:Landroid/widget/LinearLayout;

.field public Layout_Im_Presence:Landroid/widget/LinearLayout;

.field public Layout_account:Landroid/widget/RelativeLayout;

.field public LinearLayout_Email_Addr:Landroid/widget/LinearLayout;

.field public TextView_EMAIL_Count:Landroid/widget/TextView;

.field public TextView_Email_Addr:Landroid/widget/TextView;

.field public TextView_Isp_Name:Landroid/widget/TextView;

.field public account:Ljava/lang/String;

.field public accountId:Ljava/lang/Integer;

.field public accountType:[Landroid/accounts/Account;

.field public app:Ljava/lang/String;

.field public d:Landroid/graphics/drawable/Drawable;

.field public displayName:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public id:Ljava/lang/Integer;

.field public im_presence:Ljava/lang/Integer;

.field public miEmailMode:I

.field public new_count:Ljava/lang/Integer;

.field public real_email:Ljava/lang/Integer;

.field public strUnread:Ljava/lang/String;

.field public total_count:Ljava/lang/Integer;

.field public unread_count:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .parameter "ctx"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_account:Landroid/widget/RelativeLayout;

    .line 35
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Badge_EMAIL:Landroid/widget/LinearLayout;

    .line 36
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Im_Presence:Landroid/widget/LinearLayout;

    .line 37
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->LinearLayout_Email_Addr:Landroid/widget/LinearLayout;

    .line 39
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Im_Presence:Landroid/widget/ImageView;

    .line 40
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_ISP_Icon:Landroid/widget/ImageView;

    .line 41
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageVeiw_Small_Im_Presence:Landroid/widget/ImageView;

    .line 43
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Isp_Name:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Email_Addr:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_EMAIL_Count:Landroid/widget/TextView;

    .line 48
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ColorView_Account:Lcom/sec/android/socialhub/view/ListColorView;

    .line 49
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Premium_Icon:Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Delete_Check_box:Landroid/widget/CheckBox;

    .line 55
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Arrow:Landroid/widget/LinearLayout;

    .line 56
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Split_Arrow:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    .line 67
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->new_count:Ljava/lang/Integer;

    .line 87
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->unread_count:Ljava/lang/Integer;

    .line 95
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->total_count:Ljava/lang/Integer;

    .line 102
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    .line 113
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->d:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->strUnread:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    .line 133
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    .line 138
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountType:[Landroid/accounts/Account;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->miEmailMode:I

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->changeCursor(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)V
    .registers 5
    .parameter "ctx"
    .parameter "view"
    .parameter "cursor"

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_account:Landroid/widget/RelativeLayout;

    .line 35
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Badge_EMAIL:Landroid/widget/LinearLayout;

    .line 36
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Im_Presence:Landroid/widget/LinearLayout;

    .line 37
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->LinearLayout_Email_Addr:Landroid/widget/LinearLayout;

    .line 39
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Im_Presence:Landroid/widget/ImageView;

    .line 40
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_ISP_Icon:Landroid/widget/ImageView;

    .line 41
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageVeiw_Small_Im_Presence:Landroid/widget/ImageView;

    .line 43
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Isp_Name:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Email_Addr:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_EMAIL_Count:Landroid/widget/TextView;

    .line 48
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ColorView_Account:Lcom/sec/android/socialhub/view/ListColorView;

    .line 49
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Premium_Icon:Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Delete_Check_box:Landroid/widget/CheckBox;

    .line 55
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Arrow:Landroid/widget/LinearLayout;

    .line 56
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Split_Arrow:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    .line 67
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->new_count:Ljava/lang/Integer;

    .line 87
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->unread_count:Ljava/lang/Integer;

    .line 95
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->total_count:Ljava/lang/Integer;

    .line 102
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    .line 113
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->d:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->strUnread:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    .line 133
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    .line 138
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountType:[Landroid/accounts/Account;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->miEmailMode:I

    .line 154
    invoke-virtual {p0, p2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->getLayout(Landroid/view/View;)V

    .line 155
    invoke-virtual {p0, p1, p3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->changeCursor(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 156
    return-void
.end method

.method private constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V
    .registers 3
    .parameter "wrapper"

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_account:Landroid/widget/RelativeLayout;

    .line 35
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Badge_EMAIL:Landroid/widget/LinearLayout;

    .line 36
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Im_Presence:Landroid/widget/LinearLayout;

    .line 37
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->LinearLayout_Email_Addr:Landroid/widget/LinearLayout;

    .line 39
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Im_Presence:Landroid/widget/ImageView;

    .line 40
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_ISP_Icon:Landroid/widget/ImageView;

    .line 41
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageVeiw_Small_Im_Presence:Landroid/widget/ImageView;

    .line 43
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Isp_Name:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Email_Addr:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_EMAIL_Count:Landroid/widget/TextView;

    .line 48
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ColorView_Account:Lcom/sec/android/socialhub/view/ListColorView;

    .line 49
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Premium_Icon:Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Delete_Check_box:Landroid/widget/CheckBox;

    .line 55
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Arrow:Landroid/widget/LinearLayout;

    .line 56
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Split_Arrow:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    .line 67
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->new_count:Ljava/lang/Integer;

    .line 87
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->unread_count:Ljava/lang/Integer;

    .line 95
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->total_count:Ljava/lang/Integer;

    .line 102
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    .line 113
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->d:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->strUnread:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    .line 133
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    .line 138
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountType:[Landroid/accounts/Account;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->miEmailMode:I

    .line 160
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    .line 161
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    .line 162
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    .line 164
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->new_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->new_count:Ljava/lang/Integer;

    .line 165
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->unread_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->unread_count:Ljava/lang/Integer;

    .line 166
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->total_count:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->total_count:Ljava/lang/Integer;

    .line 167
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    .line 169
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->d:Landroid/graphics/drawable/Drawable;

    .line 170
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->strUnread:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->strUnread:Ljava/lang/String;

    .line 171
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    .line 172
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    .line 173
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountType:[Landroid/accounts/Account;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountType:[Landroid/accounts/Account;

    .line 174
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V
    .registers 3
    .parameter "dto"

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_account:Landroid/widget/RelativeLayout;

    .line 35
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Badge_EMAIL:Landroid/widget/LinearLayout;

    .line 36
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Im_Presence:Landroid/widget/LinearLayout;

    .line 37
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->LinearLayout_Email_Addr:Landroid/widget/LinearLayout;

    .line 39
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Im_Presence:Landroid/widget/ImageView;

    .line 40
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_ISP_Icon:Landroid/widget/ImageView;

    .line 41
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageVeiw_Small_Im_Presence:Landroid/widget/ImageView;

    .line 43
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Isp_Name:Landroid/widget/TextView;

    .line 44
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Email_Addr:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_EMAIL_Count:Landroid/widget/TextView;

    .line 48
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ColorView_Account:Lcom/sec/android/socialhub/view/ListColorView;

    .line 49
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Premium_Icon:Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Delete_Check_box:Landroid/widget/CheckBox;

    .line 55
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Arrow:Landroid/widget/LinearLayout;

    .line 56
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Split_Arrow:Landroid/widget/ImageView;

    .line 62
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    .line 67
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->new_count:Ljava/lang/Integer;

    .line 87
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->unread_count:Ljava/lang/Integer;

    .line 95
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->total_count:Ljava/lang/Integer;

    .line 102
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    .line 108
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    .line 113
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->d:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->strUnread:Ljava/lang/String;

    .line 127
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    .line 133
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    .line 138
    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountType:[Landroid/accounts/Account;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->miEmailMode:I

    .line 149
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->changeCursor(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V

    .line 150
    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 7
    .parameter "ctx"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 204
    if-nez p2, :cond_f

    .line 206
    const-string v1, "0_All"

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    .line 207
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    .line 234
    :cond_e
    :goto_e
    return-void

    .line 211
    :cond_f
    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    .line 212
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->id:Ljava/lang/Integer;

    .line 213
    const/4 v1, 0x5

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    .line 214
    const/4 v1, 0x6

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->new_count:Ljava/lang/Integer;

    .line 215
    const/4 v1, 0x7

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->unread_count:Ljava/lang/Integer;

    .line 216
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    .line 217
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    .line 218
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    .line 219
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->unread_count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->strUnread:Ljava/lang/String;

    .line 220
    const/16 v1, 0x8

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    .line 221
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sns/type/SnsSpType;->findAccountType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountType:[Landroid/accounts/Account;

    .line 222
    const-string v1, "display_name"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    .line 224
    const-string v1, "1_Messaging"

    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 226
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getMessageInterface()Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;

    move-result-object v0

    .line 227
    .local v0, message:Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;
    invoke-interface {v0, v3}, Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;->isSupport(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 229
    invoke-interface {v0, p1, v3}, Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;->getCount(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->unread_count:Ljava/lang/Integer;

    .line 230
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->unread_count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->strUnread:Ljava/lang/String;

    goto/16 :goto_e
.end method

.method public changeCursor(Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;)V
    .registers 3
    .parameter "dto"

    .prologue
    .line 184
    if-nez p1, :cond_e

    .line 186
    const-string v0, "0_All"

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    .line 187
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    .line 201
    :goto_d
    return-void

    .line 191
    :cond_e
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->account:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->account:Ljava/lang/String;

    .line 192
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->email:Ljava/lang/String;

    .line 193
    iget v0, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->is_new:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->new_count:Ljava/lang/Integer;

    .line 194
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->app:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    .line 195
    iget v0, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    .line 196
    iget v0, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->real_email:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->real_email:Ljava/lang/Integer;

    .line 197
    iget v0, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->unread:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->strUnread:Ljava/lang/String;

    .line 198
    iget v0, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->presence:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->im_presence:Ljava/lang/Integer;

    .line 199
    iget-object v0, p1, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->displayName:Ljava/lang/String;

    goto :goto_d
.end method

.method public clone()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    .registers 2

    .prologue
    .line 178
    new-instance v0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;-><init>(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)V

    .line 179
    .local v0, wrapper:Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->clone()Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getLayout(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 252
    if-eqz p1, :cond_a7

    .line 254
    const v0, 0x7f0b0112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_account:Landroid/widget/RelativeLayout;

    .line 255
    const v0, 0x7f0b011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Badge_EMAIL:Landroid/widget/LinearLayout;

    .line 256
    const v0, 0x7f0b011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Im_Presence:Landroid/widget/LinearLayout;

    .line 257
    const v0, 0x7f0b011d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Im_Presence:Landroid/widget/ImageView;

    .line 258
    const v0, 0x7f0b0119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageVeiw_Small_Im_Presence:Landroid/widget/ImageView;

    .line 259
    const v0, 0x7f0b0012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_ISP_Icon:Landroid/widget/ImageView;

    .line 260
    const v0, 0x7f0b0115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Isp_Name:Landroid/widget/TextView;

    .line 261
    const v0, 0x7f0b0116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->LinearLayout_Email_Addr:Landroid/widget/LinearLayout;

    .line 262
    const v0, 0x7f0b0118

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_Email_Addr:Landroid/widget/TextView;

    .line 263
    const v0, 0x7f0b011b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_EMAIL_Count:Landroid/widget/TextView;

    .line 264
    const v0, 0x7f0b010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/ListColorView;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ColorView_Account:Lcom/sec/android/socialhub/view/ListColorView;

    .line 265
    const v0, 0x7f0b0117

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Premium_Icon:Landroid/widget/ImageView;

    .line 266
    const v0, 0x7f0b0069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Delete_Check_box:Landroid/widget/CheckBox;

    .line 268
    const v0, 0x7f0b0017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Arrow:Landroid/widget/LinearLayout;

    .line 269
    const v0, 0x7f0b0018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->ImageView_Split_Arrow:Landroid/widget/ImageView;

    .line 271
    :cond_a7
    return-void
.end method

.method public isEqual(Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;)Z
    .registers 5
    .parameter "wrapper"

    .prologue
    const/4 v0, 0x0

    .line 275
    if-nez p1, :cond_4

    .line 286
    :cond_3
    :goto_3
    return v0

    .line 278
    :cond_4
    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->accountId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 283
    const-string v0, "UinboxViewWrapper"

    const-string v1, "isEqual()"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public updateBadge()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 238
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->unread_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_38

    .line 240
    const-string v0, "2_Email"

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "3_SevenEmail"

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string v0, "1_Messaging"

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->app:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 242
    :cond_27
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->Layout_Badge_EMAIL:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 245
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_EMAIL_Count:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->TextView_EMAIL_Count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxViewWrapper;->strUnread:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    :cond_38
    return-void
.end method
